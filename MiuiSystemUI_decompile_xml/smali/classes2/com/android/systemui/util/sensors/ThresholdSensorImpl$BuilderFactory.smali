.class public final Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

.field public final mResources:Landroid/content/res/Resources;

.field public final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/concurrency/ExecutionImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;->mResources:Landroid/content/res/Resources;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 9
    return-void
    .line 11
.end method
