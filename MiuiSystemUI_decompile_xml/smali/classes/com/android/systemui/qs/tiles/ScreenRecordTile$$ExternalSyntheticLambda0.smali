.class public final synthetic Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 10
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 12
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 14
    if-nez v3, :cond_1

    .line 16
    move v3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :cond_1
    move v3, v2

    .line 23
    :goto_0
    new-instance v11, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda1;

    .line 24
    invoke-direct {v11, v0}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;)V

    .line 26
    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 29
    iget-object v10, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 31
    iget-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 33
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 35
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v4, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 40
    iget-object v4, v6, Lcom/android/systemui/screenrecord/RecordingController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    iget-object v9, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 47
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v12, Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    .line 52
    iget-object v8, v6, Lcom/android/systemui/screenrecord/RecordingController;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 54
    move-object v4, v12

    .line 56
    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda1;)V

    .line 57
    new-instance v4, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;

    .line 60
    invoke-direct {v4, v0, v3, v12, p0}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;ZLcom/android/systemui/screenrecord/ScreenRecordDialog;Landroid/view/View;)V

    .line 62
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 65
    invoke-virtual {p0, v4, v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    .line 67
    return-void
.end method
