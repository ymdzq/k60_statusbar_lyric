.class final Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/text/Layout;

    .line 2
    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 4
    new-instance p0, Lcom/android/systemui/animation/TextAnimator;

    .line 6
    const/16 v0, 0x1e

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/animation/TextAnimator;-><init>(Landroid/text/Layout;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    .line 14
    return-object p0
    .line 17
.end method
