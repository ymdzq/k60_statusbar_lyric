.class public Lcom/miui/maml/data/VolumeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final SHOW_DELAY_TIME:I = 0x3e8

.field public static final VAR_VOLUME_LEVEL:Ljava/lang/String; = "volume_level"

.field public static final VAR_VOLUME_LEVEL_OLD:Ljava/lang/String; = "volume_level_old"

.field public static final VAR_VOLUME_TYPE:Ljava/lang/String; = "volume_type"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mResetType:Ljava/lang/Runnable;

.field private mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeType:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 3

    .line 1
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/miui/maml/data/VolumeVariableUpdater$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/miui/maml/data/VolumeVariableUpdater$1;-><init>(Lcom/miui/maml/data/VolumeVariableUpdater;)V

    .line 9
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 14
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 23
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 27
    const-string/jumbo v1, "volume_level"

    .line 29
    const/4 v2, 0x1

    .line 32
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 33
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 38
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 40
    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 44
    const-string/jumbo v1, "volume_level_old"

    .line 46
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 49
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

    .line 52
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 54
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 56
    move-result-object v0

    .line 59
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 60
    const-string/jumbo v1, "volume_type"

    .line 62
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 65
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 68
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 72
    return-void
    .line 75
.end method

.method public static synthetic access$000(Lcom/miui/maml/data/VolumeVariableUpdater;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string p3, "android.media.VOLUME_CHANGED_ACTION"

    .line 6
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 14
    const/4 p3, -0x1

    .line 16
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result p1

    .line 20
    iget-object p3, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 21
    int-to-double v0, p1

    .line 23
    invoke-virtual {p3, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 24
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 27
    const/4 p3, 0x0

    .line 29
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    move-result p1

    .line 33
    iget-object v0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 34
    int-to-double v1, p1

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 37
    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 40
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    move-result p2

    .line 45
    if-eq p2, p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

    .line 48
    int-to-double p2, p2

    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 54
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 58
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 61
    iget-object p2, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 68
    iget-object p0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 70
    const-wide/16 p2, 0x3e8

    .line 72
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_1
    return-void
    .line 77
.end method
