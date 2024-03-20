.class public final Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/lockscreeninfo/LockScreenInfoLayout;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;->a:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;->$r8$classId:I

    .line 2
    const-string v0, "LockScreenInfoLayout"

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "parentView is "

    .line 12
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;->a:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 17
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p0, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;->a:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 33
    sget p1, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->$r8$clinit:I

    .line 35
    invoke-virtual {p0}, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->f()V

    .line 37
    return-void

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;->a:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 41
    iget-object v1, p1, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->e:Landroid/content/Context;

    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object v1

    .line 48
    const-string v2, "power_supersave_mode_open"

    .line 49
    const/4 v3, 0x0

    .line 51
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 52
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    const/4 v3, 0x1

    .line 58
    :cond_0
    iput-boolean v3, p1, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->k:Z

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "isSurperSaveOpen on change "

    .line 63
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;->a:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 68
    iget-boolean v1, v1, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->k:Z

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 78
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout$b;->a:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 82
    iget-object p1, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->a:Lcom/miui/lockscreeninfo/BaseTextView;

    .line 84
    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->d:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    .line 88
    if-eqz v0, :cond_1

    .line 90
    iget-boolean p0, p0, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->k:Z

    .line 92
    iput-boolean p0, p1, Lcom/miui/lockscreeninfo/BaseTextView;->a:Z

    .line 94
    invoke-virtual {p1, v0}, Lcom/miui/lockscreeninfo/BaseTextView;->a(Lcom/miui/lockscreeninfo/model/SignatureInfo;)V

    .line 96
    :cond_1
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 100
.end method
