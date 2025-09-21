class_name TagCommandProcessor
extends Node

signal command_queue_drained()

@export var enable_debug := false

var _queue : Array = []
var _is_running := false
var transition_manager: TransitionManager
var display_style_manager: DisplayStyleManager
var audio_manager

func _debug(m): if enable_debug: print("[TagCmd]", m)

func enqueue_tags(tags: Array) -> void:
    for t in tags:
        var cmd = _parse_tag(t)
        if cmd: _queue.append(cmd)
    if not _is_running:
        _process_next()


func _parse_tag(tag: String) -> Dictionary:
    var parts = tag.split(":")
    if parts.is_empty(): return {}
    match parts[0]:
        "audio":
            return _parse_audio(parts)
        "image":
            return _parse_image(parts)
        "bg":
            return {"type":"bg","path":parts[1] if parts.size()>1 else "", "mode":parts[2] if parts.size()>2 else "crossfade", "dur":float(parts[3])/1000.0 if parts.size()>3 else 1.0}
        "cg":
            return {"type":"cg","sub":parts[1] if parts.size()>1 else ""}
        "hide_window":
            return {"type":"window","action":"hide"}
        "show_window":
            return {"type":"window","action":"show"}
        # "layout":
        #     return {"type":"layout","style":parts[1] if parts.size()>1 else "SNL"}
        "wait":
            return {"type":"wait","ms":int(parts[1]) if parts.size()>1 else 0}
        "text":
            # ex: text:show:SS-04:x:y:size:color:font:in:out
            return {"type":"ptext","mode":parts[1],"payload":parts.slice(2)}
        _:
            return {}
    return {}

func _parse_audio(parts: Array) -> Dictionary:
    if parts.size()<2: return {}
    match parts[1]:
        "playse":
            return {"type":"audio","sub":"se","path":parts[2] if parts.size()>2 else "", "vol":parts[3] if parts.size()>3 else "100"}
        "playbgm":
            return {"type":"audio","sub":"bgm","path":parts[2] if parts.size()>2 else "", "loop": parts.has("loop")}
        "fadeoutbgm":
            return {"type":"audio","sub":"fadeoutbgm","dur": float(parts[2])/1000.0 if parts.size()>2 else 1.0}
        "fadeoutse":
            return {"type":"audio","sub":"fadeoutse","dur": float(parts[2])/1000.0 if parts.size()>2 else 1.0}
    return {}

func _parse_image(parts: Array) -> Dictionary:
    # image:show:path:time  / image:hide:time / image:free:index
    if parts.size()<2: return {}
    match parts[1]:
        "free":
            return {"type":"image","action":"free","idx": parts[2] if parts.size()>2 else ""}
    return {}

func _process_next():
    if _queue.is_empty():
        _is_running = false
        emit_signal("command_queue_drained")
        return
    _is_running = true
    var cmd = _queue.pop_front()
    _execute_command(cmd)

func _execute_command(cmd: Dictionary):
    if cmd.is_empty():
        _process_next()
        return
    match cmd.type:
        "wait":
            await get_tree().create_timer(cmd.ms/1000.0).timeout

        "bg":
            if transition_manager:
                transition_manager.crossfade_background("res://%s" % cmd.path, cmd.dur)

        "cg":
            if transition_manager:
                if cmd.sub == "":
                    transition_manager.hide_cg()
                else:
                    transition_manager.show_cg("res://%s" % cmd.sub)

        "window":
            # (Retiré si géré dans DisplayStyleManager – sinon laisse)
            pass

        "audio":
            if audio_manager:
                _handle_audio(cmd)
            else:
                _debug("Audio cmd (no audio_manager) %s" % cmd)

        "ptext":
            _debug("PText %s" % cmd.payload) # stub

        "image":
            if transition_manager:
                _debug("Image cmd (stub) %s" % cmd)
                # Implémente plus tard (overlay manager)
    _process_next()

func _handle_audio(cmd: Dictionary) -> void:
    match cmd.sub:
        "se":
            audio_manager.play_se(cmd.path, cmd.vol)
        "bgm":
            audio_manager.play_bgm(cmd.path, loop = cmd.get("loop", false))
        "fadeoutbgm":
            audio_manager.fadeout_bgm(cmd.dur)
        "fadeoutse":
            audio_manager.fadeout_all_se(cmd.dur)