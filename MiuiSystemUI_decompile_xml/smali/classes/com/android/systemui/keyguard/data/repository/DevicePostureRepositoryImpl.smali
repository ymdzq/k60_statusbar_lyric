.class public final Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/DevicePostureRepository;


# instance fields
.field public final postureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DevicePostureController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl;->postureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 5
    return-void
    .line 7
.end method
