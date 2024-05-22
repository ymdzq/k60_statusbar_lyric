.class public final Lcom/android/systemui/complication/ComplicationViewModelTransformer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mComplicationIdFactory:Lcom/android/systemui/complication/ComplicationId$Factory;

.field public final mComplicationIdMapping:Ljava/util/HashMap;

.field public final mViewModelComponentFactory:Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/complication/ComplicationId$Factory;

    .line 5
    invoke-direct {v0}, Lcom/android/systemui/complication/ComplicationId$Factory;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdFactory:Lcom/android/systemui/complication/ComplicationId$Factory;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mViewModelComponentFactory:Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;

    .line 19
    return-void
    .line 21
.end method
