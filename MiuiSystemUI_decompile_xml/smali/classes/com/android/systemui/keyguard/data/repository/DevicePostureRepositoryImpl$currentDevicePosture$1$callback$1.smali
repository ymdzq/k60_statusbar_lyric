.class public final Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl$currentDevicePosture$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic $sendPostureUpdate:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl$currentDevicePosture$1$callback$1;->$sendPostureUpdate:Lkotlin/jvm/functions/Function1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl$currentDevicePosture$1$callback$1;->$sendPostureUpdate:Lkotlin/jvm/functions/Function1;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
    .line 11
.end method
