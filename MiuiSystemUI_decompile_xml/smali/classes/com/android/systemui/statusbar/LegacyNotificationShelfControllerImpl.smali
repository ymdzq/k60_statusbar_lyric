.class public final Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShelfController;


# instance fields
.field public final mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

.field public mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mOnAttachStateChangeListener:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mView:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 11
    sget-object p2, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->setSensitiveRevealAnimEndabled(Z)V

    .line 19
    new-instance p1, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;

    .line 22
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;)V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mOnAttachStateChangeListener:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;

    .line 27
    return-void
    .line 29
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->assertRefactorFlagDisabled()V

    .line 4
    iput-object p1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 7
    iput-object p2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationShelf$$ExternalSyntheticLambda0;-><init>()V

    .line 13
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 16
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnNotificationRemovedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnNotificationRemovedListener;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 21
    return-void
    .line 23
.end method

.method public final canModifyColorOfNotifications()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 4
    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 16
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
    .line 25
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getView()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setOnClickListener(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$bindController$1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    return-void
    .line 7
.end method
