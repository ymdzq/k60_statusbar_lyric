.class public final Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final deviceEntryFaceAuthRepository:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;

.field public final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final keyguardTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->deviceEntryFaceAuthRepository:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->keyguardTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 13
    return-void
    .line 15
.end method
