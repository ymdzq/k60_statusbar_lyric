.class final enum Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;
.super Ljava/lang/Enum;
.source "PrivacyPasswordChooseAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

.field public static final enum Cancel:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

.field public static final enum CancelDisable:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

.field public static final enum Gone:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

.field public static final enum Retry:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method private static synthetic $values()[Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;
    .locals 5

    .line 88
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Cancel:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->CancelDisable:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v2, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Retry:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v3, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->RetryDisabled:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v4, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Gone:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 89
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget v1, Lcom/android/settings/R$string;->cancel:I

    const-string v2, "Cancel"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Cancel:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    .line 90
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    const-string v2, "CancelDisable"

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->CancelDisable:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    .line 91
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget v1, Lcom/android/settings/R$string;->lockpattern_retry_button_text:I

    const-string v2, "Retry"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1, v4}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Retry:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    .line 92
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    const-string v2, "RetryDisabled"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->RetryDisabled:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    .line 93
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v4, "Gone"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Gone:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    .line 88
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->$values()[Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    move-result-object v0

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->$VALUES:[Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->text:I

    .line 97
    iput-boolean p4, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->enabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;
    .locals 1

    .line 88
    const-class v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;
    .locals 1

    .line 88
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->$VALUES:[Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    return-object v0
.end method
