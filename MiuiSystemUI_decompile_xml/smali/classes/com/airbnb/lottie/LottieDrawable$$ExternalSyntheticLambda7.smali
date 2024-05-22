.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$1:I

    .line 7
    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$2:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$1:I

    .line 2
    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$2:I

    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 8
    return-void
    .line 11
.end method
