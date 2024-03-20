.class public final enum Lcom/android/settings/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/LockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/android/settings/LockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/android/settings/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/android/settings/LockPatternView$DisplayMode;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/LockPatternView$DisplayMode;
    .locals 3

    .line 138
    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/LockPatternView$DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 143
    new-instance v0, Lcom/android/settings/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    .line 148
    new-instance v0, Lcom/android/settings/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    .line 153
    new-instance v0, Lcom/android/settings/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    .line 138
    invoke-static {}, Lcom/android/settings/LockPatternView$DisplayMode;->$values()[Lcom/android/settings/LockPatternView$DisplayMode;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/settings/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/LockPatternView$DisplayMode;
    .locals 1

    .line 138
    const-class v0, Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/LockPatternView$DisplayMode;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/LockPatternView$DisplayMode;
    .locals 1

    .line 138
    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/android/settings/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/LockPatternView$DisplayMode;

    return-object v0
.end method
