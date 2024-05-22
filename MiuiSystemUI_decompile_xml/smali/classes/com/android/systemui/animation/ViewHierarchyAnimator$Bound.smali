.class abstract enum Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

.field public static final enum BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

.field public static final enum LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

.field public static final enum RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

.field public static final enum TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;


# instance fields
.field private final label:Ljava/lang/String;

.field private final overrideTag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    .line 7
    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    .line 9
    invoke-direct {v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;-><init>()V

    .line 11
    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    .line 14
    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    .line 16
    invoke-direct {v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;-><init>()V

    .line 18
    sput-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    .line 21
    new-instance v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    .line 23
    invoke-direct {v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;-><init>()V

    .line 25
    sput-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    .line 28
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->$VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 34
    return-void
    .line 36
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->label:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->overrideTag:I

    .line 7
    return-void
    .line 9
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->$VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->label:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOverrideTag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->overrideTag:I

    .line 2
    return p0
    .line 4
.end method

.method public abstract getValue(Landroid/view/View;)I
.end method

.method public abstract setValue(ILandroid/view/View;)V
.end method
