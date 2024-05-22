.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 4
    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->f$1:F

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->f$1:F

    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 12
    return-void

    .line 15
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 16
    return-void

    .line 19
    :goto_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 20
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
