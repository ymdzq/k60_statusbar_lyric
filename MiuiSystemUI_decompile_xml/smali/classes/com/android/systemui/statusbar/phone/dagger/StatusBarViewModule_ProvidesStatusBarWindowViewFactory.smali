.class public abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_ProvidesStatusBarWindowViewFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesStatusBarWindowView(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;->notificationShelf(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    .line 7
    move-result-object p0

    .line 10
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;->build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;

    .line 11
    move-result-object p0

    .line 14
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;->getNotificationShelfController()Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;

    .line 15
    move-result-object p0

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setController(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    .line 26
    iget-object p2, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mOnAttachStateChangeListener:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 31
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 40
    :cond_0
    return-object p0
    .line 43
.end method
