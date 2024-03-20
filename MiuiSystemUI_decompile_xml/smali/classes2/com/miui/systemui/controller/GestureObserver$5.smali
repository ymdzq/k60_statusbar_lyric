.class public final Lcom/miui/systemui/controller/GestureObserver$5;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/GestureObserver;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/GestureObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 2
    iget-object p1, p1, Lcom/miui/systemui/controller/GestureObserver;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string v0, "force_fsg_nav_bar"

    .line 10
    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 16
    iget-object v0, v0, Lcom/miui/systemui/controller/GestureObserver;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "hide_gesture_line"

    .line 24
    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "onChange: fullscreenGesture = "

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ", gestureLineEnable = "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 51
    const-string v2, "GestureObserver"

    .line 52
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 57
    iget-boolean v1, v1, Lcom/miui/systemui/controller/GestureObserver;->mFullscreenGesture:Z

    .line 59
    if-ne p1, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 63
    iget-boolean v1, v1, Lcom/miui/systemui/controller/GestureObserver;->mGestureLineEnable:Z

    .line 65
    if-eq v0, v1, :cond_1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 69
    iput-boolean p1, v1, Lcom/miui/systemui/controller/GestureObserver;->mFullscreenGesture:Z

    .line 71
    iget-object p1, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 73
    iput-boolean v0, p1, Lcom/miui/systemui/controller/GestureObserver;->mGestureLineEnable:Z

    .line 75
    iget-object p1, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 77
    iget-object p1, p1, Lcom/miui/systemui/controller/GestureObserver;->mMainHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/miui/systemui/controller/GestureObserver$5$1;

    .line 81
    invoke-direct {v0, p0}, Lcom/miui/systemui/controller/GestureObserver$5$1;-><init>(Lcom/miui/systemui/controller/GestureObserver$5;)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_1
    return-void
    .line 89
.end method
