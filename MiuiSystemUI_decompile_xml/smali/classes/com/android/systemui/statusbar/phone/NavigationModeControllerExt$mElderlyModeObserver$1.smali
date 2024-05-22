.class public final Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;->$r8$classId:I

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;->$r8$classId:I

    .line 2
    const/4 p1, 0x0

    .line 4
    const-string v0, "NavigationModeControllerExt"

    .line 5
    const/4 v1, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    goto :goto_3

    .line 11
    :pswitch_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    if-nez p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, p0

    .line 17
    :goto_0
    const-string p0, "hide_gesture_line"

    .line 18
    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    const/4 p1, 0x1

    .line 26
    :cond_1
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHideGestureLine:Z

    .line 27
    if-eq p1, p0, :cond_3

    .line 29
    sput-boolean p1, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHideGestureLine:Z

    .line 31
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 33
    if-nez p0, :cond_2

    .line 35
    const-string p0, " not is fsg mode"

    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_1

    .line 42
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHandlerForPost:Landroid/os/Handler;

    .line 43
    sget-object p1, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;->INSTANCE$2:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    :cond_3
    :goto_1
    return-void

    .line 50
    :pswitch_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    if-nez p0, :cond_4

    .line 53
    goto :goto_2

    .line 55
    :cond_4
    move-object v1, p0

    .line 56
    :goto_2
    const-string p0, "force_fsg_nav_bar"

    .line 57
    invoke-static {v1, p0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 59
    move-result p0

    .line 62
    const-string p1, "isFsMode: "

    .line 63
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 65
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 68
    if-eq p0, p1, :cond_5

    .line 70
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 72
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHandlerForPost:Landroid/os/Handler;

    .line 74
    sget-object p1, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;->INSTANCE$1:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 76
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_5
    return-void

    .line 81
    :pswitch_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHandlerForPost:Landroid/os/Handler;

    .line 82
    sget-object p1, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1$onChange$1;

    .line 84
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void

    .line 89
    :goto_3
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    if-nez p0, :cond_6

    .line 92
    goto :goto_4

    .line 94
    :cond_6
    move-object v1, p0

    .line 95
    :goto_4
    const-string p0, "nav_button_pos"

    .line 96
    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 98
    move-result p0

    .line 101
    sget v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mNavPos:I

    .line 102
    if-eq p0, v0, :cond_7

    .line 104
    sput p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mNavPos:I

    .line 106
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->navigationBarController$delegate:Lkotlin/Lazy;

    .line 108
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 113
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 114
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;

    .line 116
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarController;I)V

    .line 118
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_7
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 128
.end method
