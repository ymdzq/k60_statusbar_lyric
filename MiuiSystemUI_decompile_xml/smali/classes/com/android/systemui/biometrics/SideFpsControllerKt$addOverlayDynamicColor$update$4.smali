.class public final Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;->INSTANCE:Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    .line 2
    const/4 p1, -0x1

    .line 4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    return-object p0
    .line 10
.end method
