.class public final enum Lcom/android/settings/ConfirmLockPattern$Stage;
.super Ljava/lang/Enum;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/ConfirmLockPattern$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ConfirmLockPattern$Stage;

.field public static final enum LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

.field public static final enum NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

.field public static final enum NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 3

    .line 120
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/ConfirmLockPattern$Stage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlock"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    .line 122
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlockWrong"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    .line 123
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$Stage;

    const-string v1, "LockedOut"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    .line 120
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$Stage;->$values()[Lcom/android/settings/ConfirmLockPattern$Stage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->$VALUES:[Lcom/android/settings/ConfirmLockPattern$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 1

    .line 120
    const-class v0, Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 1

    .line 120
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->$VALUES:[Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/ConfirmLockPattern$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object v0
.end method
