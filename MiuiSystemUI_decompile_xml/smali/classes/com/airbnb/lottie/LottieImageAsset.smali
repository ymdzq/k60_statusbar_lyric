.class public final Lcom/airbnb/lottie/LottieImageAsset;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final fileName:Ljava/lang/String;

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    .line 5
    iput p4, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    .line 7
    iput-object p2, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    .line 9
    return-void
    .line 11
.end method
