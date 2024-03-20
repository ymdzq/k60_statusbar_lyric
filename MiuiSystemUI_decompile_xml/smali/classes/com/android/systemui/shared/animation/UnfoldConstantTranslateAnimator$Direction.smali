.class public final enum Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

.field public static final enum END:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

.field public static final enum START:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;


# instance fields
.field private final multiplier:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    const-string v3, "START"

    .line 7
    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;-><init>(FILjava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->START:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 12
    new-instance v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 14
    const/4 v2, 0x1

    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    const-string v4, "END"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;-><init>(FILjava/lang/String;)V

    .line 21
    sput-object v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->END:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 24
    filled-new-array {v0, v1}, [Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->$VALUES:[Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 30
    return-void
    .line 32
.end method

.method public constructor <init>(FILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->multiplier:F

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->$VALUES:[Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getMultiplier()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->multiplier:F

    .line 2
    return p0
    .line 4
.end method
