.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 9
    iput-boolean p4, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;->f$3:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 2
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;->f$3:Z

    .line 4
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    return-void
    .line 13
.end method
