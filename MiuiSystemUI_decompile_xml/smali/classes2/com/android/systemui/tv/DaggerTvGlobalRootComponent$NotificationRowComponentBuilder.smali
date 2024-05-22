.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;


# instance fields
.field public activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    return-void
.end method


# virtual methods
.method public final activatableNotificationView(Lcom/android/systemui/statusbar/notification/zen/ZenModeView;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object p0
.end method

.method public final activatableNotificationView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object p0
.end method

.method public final build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 2
    const-class v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 4
    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentImpl;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentBuilder;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 15
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationRowComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 17
    return-object v0
    .line 20
.end method
