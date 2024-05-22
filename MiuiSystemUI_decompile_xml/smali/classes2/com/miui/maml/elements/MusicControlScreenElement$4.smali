.class Lcom/miui/maml/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/MusicControlScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 10
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 12
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 19
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "android.media.metadata.DURATION"

    .line 25
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 27
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 31
    invoke-static {v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/miui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    .line 37
    move-result-wide v2

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    cmp-long v6, v0, v4

    .line 43
    if-lez v6, :cond_3

    .line 45
    cmp-long v4, v2, v4

    .line 47
    if-gez v4, :cond_1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    iget-object v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 52
    invoke-static {v4}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 54
    move-result-object v4

    .line 57
    long-to-double v0, v0

    .line 58
    invoke-virtual {v4, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 59
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 62
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 64
    move-result-object v0

    .line 67
    long-to-double v4, v2

    .line 68
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 69
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 72
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2700(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 80
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 82
    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 88
    invoke-static {v0, v2, v3}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2800(Lcom/miui/maml/elements/MusicControlScreenElement;J)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 93
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 98
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 100
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 104
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 108
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2900(Lcom/miui/maml/elements/MusicControlScreenElement;)I

    .line 110
    move-result v1

    .line 113
    int-to-long v1, v1

    .line 114
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_3
    :goto_0
    return-void
    .line 118
.end method
