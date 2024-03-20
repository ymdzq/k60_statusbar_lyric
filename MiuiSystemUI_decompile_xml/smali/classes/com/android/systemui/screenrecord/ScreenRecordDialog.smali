.class public final Lcom/android/systemui/screenrecord/ScreenRecordDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final MODES:Ljava/util/List;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAudioSwitch:Landroid/widget/Switch;

.field public final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mOnStartRecordingClicked:Ljava/lang/Runnable;

.field public mOptions:Landroid/widget/Spinner;

.field public mTapsSwitch:Landroid/widget/Switch;

.field public final mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 2
    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 4
    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 6
    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->MODES:Ljava/util/List;

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    iput-object p7, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOnStartRecordingClicked:Ljava/lang/Runnable;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object p1

    .line 8
    const/16 v0, 0x10

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 11
    const/16 v0, 0x11

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 16
    const p1, 0x7f130a7c    # @string/screenrecord_title 'Screen Recorder'

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 22
    const p1, 0x7f0d0325    # @layout/screen_record_dialog 'res/layout/screen_record_dialog.xml'

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 28
    const p1, 0x7f0a01aa    # @id/button_cancel

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;

    .line 40
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;I)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const p1, 0x7f0a01b1    # @id/button_start

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;

    .line 58
    const/4 v1, 0x1

    .line 60
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;I)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 67
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    const p1, 0x7f0a080a    # @id/screenrecord_audio_switch

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/Switch;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    .line 83
    const p1, 0x7f0a080b    # @id/screenrecord_taps_switch

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/Switch;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mTapsSwitch:Landroid/widget/Switch;

    .line 94
    const p1, 0x7f0a0805    # @id/screen_recording_options

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/Spinner;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    .line 105
    new-instance p1, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;

    .line 107
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 113
    move-result-object v0

    .line 116
    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->MODES:Ljava/util/List;

    .line 117
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 119
    const v0, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    .line 133
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda1;

    .line 135
    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;)V

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    return-void
    .line 143
.end method

.method public final requestScreenCapture(Lcom/android/systemui/media/MediaProjectionCaptureTarget;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mTapsSwitch:Landroid/widget/Switch;

    .line 10
    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    .line 12
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    .line 16
    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    .line 24
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 33
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result v2

    .line 38
    sget v3, Lcom/android/systemui/screenrecord/RecordingService;->$r8$clinit:I

    .line 39
    new-instance v3, Landroid/content/Intent;

    .line 41
    const-class v4, Lcom/android/systemui/screenrecord/RecordingService;

    .line 43
    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string v4, "com.android.systemui.screenrecord.START"

    .line 48
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    move-result-object v3

    .line 53
    const-string v4, "extra_resultCode"

    .line 54
    const/4 v5, -0x1

    .line 56
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    move-result-object v3

    .line 60
    const-string v4, "extra_useAudio"

    .line 61
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    move-result-object v2

    .line 66
    const-string v3, "extra_showTaps"

    .line 67
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    move-result-object v1

    .line 72
    const-string v2, "extra_captureTarget"

    .line 73
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    move-result-object p1

    .line 78
    const/4 v1, 0x2

    .line 79
    const/high16 v2, 0xc000000

    .line 80
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 82
    move-result-object p1

    .line 85
    new-instance v3, Landroid/content/Intent;

    .line 86
    const-class v4, Lcom/android/systemui/screenrecord/RecordingService;

    .line 88
    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const-string v4, "com.android.systemui.screenrecord.STOP"

    .line 93
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    move-result-object v3

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 99
    move-result v4

    .line 102
    const-string v5, "android.intent.extra.user_handle"

    .line 103
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    move-result-object v3

    .line 108
    invoke-static {v0, v1, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 109
    move-result-object v0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 113
    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    .line 116
    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    .line 118
    new-instance v0, Lcom/android/systemui/screenrecord/RecordingController$3;

    .line 120
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenrecord/RecordingController$3;-><init>(Lcom/android/systemui/screenrecord/RecordingController;Landroid/app/PendingIntent;)V

    .line 122
    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

    .line 125
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 127
    return-void
    .line 130
.end method
