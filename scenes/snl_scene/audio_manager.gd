extends AudioStreamPlayer
class_name AudioManager

var se_bus:= "SFX"

func play_bgm(path: String, loop: bool = true) -> void:
    var stream = load("res://%s" % path)
    if stream: 
        self.stream = stream
        self.stream.loop = loop
        play()

func fadeout_bgm(duration: float) -> void:
    var tween = create_tween()
    tween.tween_property(self, "volume_db", -40, duration).finished.connect(func():
        stop()
        volume_db = 0.0)

func play_se(path: String, vol_str: String = "100"):
    var stream = load("res://%s" % path)
    if not stream: return
    var p := AudioStreamPlayer.new()
    p.bus = se_bus
    add_child(p)
    p.stream = stream
    var vol = float(vol_str)
    p.volume_db = linear_to_db(vol/100.0)
    p.play()
    p.finished.connect(func():
        p.queue_free())

func fadeout_all_se(dur: float):
    for child in get_children():
        if child is AudioStreamPlayer and child != self:
            var tween = create_tween()
            tween.tween_property(child, "volume_db", -40, dur).finished.connect(func():
                child.stop()
                child.queue_free())

