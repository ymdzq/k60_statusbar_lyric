.class public final enum Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;
.super Ljava/lang/Enum;
.source "PrivacyPasswordConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

.field public static final enum LockedOut:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

.field public static final enum NeedToUnlock:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

.field public static final enum NeedToUnlockWrong:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;
    .locals 3

    .line 84
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->NeedToUnlock:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->NeedToUnlockWrong:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    sget-object v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->LockedOut:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    const-string v1, "NeedToUnlock"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->NeedToUnlock:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    const-string v1, "NeedToUnlockWrong"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->NeedToUnlockWrong:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    const-string v1, "LockedOut"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->LockedOut:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    .line 84
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->$values()[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->$VALUES:[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;
    .locals 1

    .line 84
    const-class v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;
    .locals 1

    .line 84
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->$VALUES:[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    return-object v0
.end method
