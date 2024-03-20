.class Lcom/android/settings/MiuiShortcut$Key$1;
.super Ljava/util/LinkedHashMap;
.source "MiuiShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiShortcut$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 399
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "long_press_power_key"

    const-string v1, "double_knock"

    .line 400
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "launch_voice_assistant"

    .line 400
    invoke-virtual {p0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "double_click_power_key"

    .line 403
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "launch_smarthome"

    .line 403
    invoke-virtual {p0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "three_gesture_down"

    const-string v4, "key_combination_power_volume_down"

    .line 406
    filled-new-array {v3, v4, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "screen_shot"

    .line 406
    invoke-virtual {p0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "three_gesture_long_press"

    const-string v4, "knock_slide_shape"

    .line 410
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "partial_screen_shot"

    .line 410
    invoke-virtual {p0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "mi_pay"

    .line 413
    invoke-virtual {p0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "au_pay"

    .line 415
    invoke-virtual {p0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "google_pay"

    .line 417
    invoke-virtual {p0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "double_click_volume_down_when_lock"

    .line 419
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "launch_camera"

    .line 419
    invoke-virtual {p0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v3, "turn_on_torch"

    .line 422
    invoke-virtual {p0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "knock_long_press_horizontal_slid"

    .line 424
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "change_brightness"

    .line 424
    invoke-virtual {p0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "launch_google_search"

    .line 426
    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
