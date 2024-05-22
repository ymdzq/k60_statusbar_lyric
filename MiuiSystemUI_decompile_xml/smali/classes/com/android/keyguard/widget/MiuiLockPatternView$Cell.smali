.class public final Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sCells:[[Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;


# instance fields
.field public final column:I

.field public final row:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    filled-new-array {v0, v0}, [I

    .line 3
    move-result-object v1

    .line 6
    const-class v2, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 7
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, [[Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 13
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v0, :cond_1

    .line 17
    move v4, v2

    .line 19
    :goto_1
    if-ge v4, v0, :cond_0

    .line 20
    aget-object v5, v1, v3

    .line 22
    new-instance v6, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 24
    invoke-direct {v6, v3, v4}, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;-><init>(II)V

    .line 26
    aput-object v6, v5, v4

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    sput-object v1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->sCells:[[Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 37
    return-void
    .line 39
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    if-ltz p1, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    if-ltz p2, :cond_0

    .line 10
    if-gt p2, v0, :cond_0

    .line 12
    iput p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 14
    iput p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 16
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string p1, "column must be in range 0-2"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string/jumbo p1, "row must be in range 0-2"

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
    .line 35
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "(row="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",clmn="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 19
    const-string v1, ")"

    .line 21
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method
