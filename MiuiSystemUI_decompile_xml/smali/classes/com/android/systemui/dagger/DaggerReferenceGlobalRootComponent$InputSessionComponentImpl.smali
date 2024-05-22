.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent;


# instance fields
.field public final dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

.field public final gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field public final inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

.field public final inputSessionComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;

.field public final name:Ljava/lang/String;

.field public final pilferOnGestureConsume:Ljava/lang/Boolean;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->inputSessionComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->name:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    .line 15
    iput-object p6, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 17
    iput-object p7, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->pilferOnGestureConsume:Ljava/lang/Boolean;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final getInputSession()Lcom/android/systemui/dreams/touch/InputSession;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/dreams/touch/InputSession;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->name:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, Lcom/android/systemui/settings/DisplayTracker;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->pilferOnGestureConsume:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v5

    .line 26
    move-object v0, v6

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dreams/touch/InputSession;-><init>(Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Lcom/android/systemui/settings/DisplayTracker;Z)V

    .line 28
    return-object v6
    .line 31
.end method
