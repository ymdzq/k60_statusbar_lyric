.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;


# instance fields
.field public notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    const-class v1, Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4
    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentImpl;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 15
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 17
    return-object v0
    .line 20
.end method

.method public final notificationShelf(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method

.method public final notificationShelf(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationShelfComponentBuilder;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method
