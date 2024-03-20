.class public final Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

.field public static final INSTANCE$1:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

.field public static final INSTANCE$2:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;-><init>(I)V

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;->INSTANCE$1:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 18
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;-><init>(I)V

    .line 21
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;->INSTANCE$2:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 24
    return-void
    .line 26
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    goto/16 :goto_3

    .line 9
    :pswitch_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;

    .line 11
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 13
    if-eqz p0, :cond_0

    .line 15
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHideGestureLine:Z

    .line 17
    if-eqz p0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;

    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->updateOverlayManager()V

    .line 37
    return-void

    .line 40
    :pswitch_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;

    .line 41
    const-string p0, "needOverlay is"

    .line 43
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 45
    move-result v0

    .line 48
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    if-nez v2, :cond_2

    .line 51
    const/4 v2, 0x0

    .line 53
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 54
    move-result v3

    .line 57
    const-string v4, "elderly_mode"

    .line 58
    invoke-static {v2, v4, v1, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 60
    move-result v2

    .line 63
    const-string v3, "com.android.systemui.navigation.bar.overlay"

    .line 64
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->isOverlay(ILjava/lang/String;)Z

    .line 66
    move-result v4

    .line 69
    const-string v5, "NavigationModeControllerExt"

    .line 70
    if-eq v2, v4, :cond_3

    .line 72
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->getMOverlayManager()Landroid/content/om/IOverlayManager;

    .line 89
    move-result-object p0

    .line 92
    invoke-interface {p0, v3, v2, v0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_1

    .line 96
    :catch_0
    move-exception p0

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    const-string v6, "Can\'t apply overlay for user "

    .line 100
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 111
    invoke-static {v5, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 115
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->isOverlay(ILjava/lang/String;)Z

    .line 117
    move-result p0

    .line 120
    const-string v0, "isOverlay is"

    .line 121
    invoke-static {v0, p0, v5}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 123
    if-eq v2, p0, :cond_4

    .line 126
    :try_start_1
    const-string p0, "mCurrentUserId != UserHandle.USER_OWNER"

    .line 128
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->getMOverlayManager()Landroid/content/om/IOverlayManager;

    .line 133
    move-result-object p0

    .line 136
    invoke-interface {p0, v3, v2, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    goto :goto_2

    .line 140
    :catch_1
    move-exception p0

    .line 141
    const-string v0, "Can\'t apply overlay for user owner"

    .line 142
    invoke-static {v5, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_4
    :goto_2
    return-void

    .line 147
    :goto_3
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;

    .line 148
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 150
    if-eqz p0, :cond_5

    .line 152
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHideGestureLine:Z

    .line 154
    if-eqz p0, :cond_5

    .line 156
    goto :goto_4

    .line 158
    :cond_5
    move v0, v1

    .line 159
    :goto_4
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;

    .line 160
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 162
    move-result v1

    .line 165
    if-eqz v1, :cond_6

    .line 166
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    :cond_6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 176
.end method
