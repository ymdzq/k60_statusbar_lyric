.class public Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;
.super Landroid/app/Activity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ACTION_FINISH_FROM_TRAMPOLINE:Ljava/lang/String;

.field public static final APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

.field public static final EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String;

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String;

.field public static final EXTRA_SCREENSHOT_URI:Ljava/lang/String;

.field static final EXTRA_USE_WP_USER:Ljava/lang/String;


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mKillAppClipsBroadcastIntent:Landroid/content/Intent;

.field public final mNoteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

.field public mNotesAppUser:Landroid/os/UserHandle;

.field public final mOptionalBubbles:Ljava/util/Optional;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "AppClipsTrampolineActivity"

    .line 2
    const-string v1, "SCREENSHOT_URI"

    .line 4
    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    sput-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_SCREENSHOT_URI:Ljava/lang/String;

    .line 10
    const-string v1, "USE_WP_USER"

    .line 12
    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    sput-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_USE_WP_USER:Ljava/lang/String;

    .line 18
    const-string v1, "FINISH_FROM_TRAMPOLINE"

    .line 20
    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    sput-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->ACTION_FINISH_FROM_TRAMPOLINE:Ljava/lang/String;

    .line 26
    const-string v1, "RESULT_RECEIVER"

    .line 28
    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    sput-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    .line 34
    const-string v1, "CALLING_PACKAGE_NAME"

    .line 36
    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String;

    .line 42
    const-wide/16 v0, 0x0

    .line 44
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 46
    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 50
    return-void
    .line 52
.end method

.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/flags/FeatureFlags;Ljava/util/Optional;Lcom/android/systemui/notetask/NoteTaskController;Landroid/content/pm/PackageManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/internal/logging/UiEventLogger;Landroid/os/UserManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mOptionalBubbles:Ljava/util/Optional;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNoteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUserManager:Landroid/os/UserManager;

    .line 19
    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;

    .line 21
    invoke-direct {p1, p0, p9}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;Landroid/os/Handler;)V

    .line 23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 26
    move-result-object p2

    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 42
    check-cast p1, Landroid/os/ResultReceiver;

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public getResultReceiverForTest()Landroid/os/ResultReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 2
    return-object p0
    .line 4
.end method

.method public final logScreenshotTriggeredUiEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    sget-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNotesAppUser:Landroid/os/UserHandle;

    .line 6
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    move-result v2

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "Couldn\'t find notes app UID "

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    const-string v1, "AppClipsTrampolineActivity"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    sget-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->SCREENSHOT_FOR_NOTE_TRIGGERED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 42
    invoke-interface {p0, v1, v0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 44
    return-void
    .line 47
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUserManager:Landroid/os/UserManager;

    .line 8
    invoke-virtual {p1}, Landroid/os/UserManager;->isManagedProfile()Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 17
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->setErrorResultAndFinish(I)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 27
    const-class v2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    .line 29
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    sget-object v2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_USE_WP_USER:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    move-result-object v0

    .line 39
    const/high16 v1, 0x2000000

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    return-void

    .line 52
    :cond_2
    sget-object p1, Lcom/android/systemui/flags/Flags;->SCREENSHOT_APP_CLIPS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 55
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 59
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 65
    return-void

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mOptionalBubbles:Ljava/util/Optional;

    .line 69
    invoke-virtual {p1}, Ljava/util/Optional;->isEmpty()Z

    .line 71
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->setErrorResultAndFinish(I)V

    .line 77
    return-void

    .line 80
    :cond_4
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 84
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 87
    move-result v0

    .line 90
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 91
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 93
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    .line 95
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 97
    move-result-object p1

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v0

    .line 104
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 108
    if-nez p1, :cond_5

    .line 109
    const/4 p1, 0x3

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->setErrorResultAndFinish(I)V

    .line 112
    return-void

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 116
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;)Z

    .line 119
    move-result p1

    .line 122
    if-eqz p1, :cond_6

    .line 123
    const/4 p1, 0x4

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->setErrorResultAndFinish(I)V

    .line 126
    return-void

    .line 129
    :cond_6
    const p1, 0x7f1302e0    # @string/config_screenshotAppClipsActivityComponent 'com.android.systemui/com.android.systemui.screenshot.appclips.AppClipsActivity'

    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 137
    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    if-eqz p1, :cond_9

    .line 141
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 147
    move-result v0

    .line 150
    if-nez v0, :cond_9

    .line 151
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 157
    move-result v0

    .line 160
    if-eqz v0, :cond_7

    .line 161
    goto/16 :goto_2

    .line 163
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    .line 165
    move-result-object v0

    .line 168
    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNotesAppUser:Landroid/os/UserHandle;

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 171
    move-result-object v0

    .line 174
    sget-object v2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_USE_WP_USER:Ljava/lang/String;

    .line 175
    const/4 v3, 0x0

    .line 177
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 178
    move-result v0

    .line 181
    if-eqz v0, :cond_8

    .line 182
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 184
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 188
    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 192
    move-result-object v0

    .line 195
    new-instance v2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;

    .line 196
    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;)V

    .line 198
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 201
    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 205
    move-result-object v0

    .line 208
    new-instance v2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda1;

    .line 209
    invoke-direct {v2}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 211
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 214
    move-result-object v0

    .line 217
    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNotesAppUser:Landroid/os/UserHandle;

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    move-result-object v0

    .line 223
    check-cast v0, Landroid/os/UserHandle;

    .line 224
    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNotesAppUser:Landroid/os/UserHandle;

    .line 226
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 231
    new-instance v2, Landroid/content/Intent;

    .line 232
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 234
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    move-result-object v2

    .line 240
    const/high16 v3, 0x10000000

    .line 241
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    move-result-object v2

    .line 246
    sget-object v3, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    .line 247
    iget-object v4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 249
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    move-result-object v2

    .line 254
    sget-object v3, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String;

    .line 255
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    move-result-object v2

    .line 260
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNotesAppUser:Landroid/os/UserHandle;

    .line 261
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 263
    new-instance v2, Landroid/content/Intent;

    .line 266
    sget-object v3, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->ACTION_FINISH_FROM_TRAMPOLINE:Ljava/lang/String;

    .line 268
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 273
    move-result-object v2

    .line 276
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 277
    move-result-object p1

    .line 280
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    move-result-object p1

    .line 284
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mKillAppClipsBroadcastIntent:Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->logScreenshotTriggeredUiEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    goto :goto_1

    .line 290
    :catch_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->setErrorResultAndFinish(I)V

    .line 291
    :goto_1
    return-void

    .line 294
    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->setErrorResultAndFinish(I)V

    .line 295
    return-void

    .line 298
    :catch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->setErrorResultAndFinish(I)V

    .line 299
    return-void
    .line 302
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mKillAppClipsBroadcastIntent:Landroid/content/Intent;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const-string v1, "com.android.systemui.permission.SELF"

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final setErrorResultAndFinish(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v1, "android.intent.extra.CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    move-result-object p1

    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    return-void
    .line 20
.end method
