.class public final enum Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum SameWithOtherSpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum SameWithOwnerUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum SameWithSecuritySpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field headerMessage:I

.field final leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 10

    .line 381
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v6, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v7, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOwnerUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithSecuritySpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOtherSpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    filled-new-array/range {v0 .. v9}, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 383
    new-instance v8, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/R$string;->lockpattern_recording_intro_header:I

    sget-object v17, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v18, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v8, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 387
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v10, "HelpScreen"

    const/4 v11, 0x1

    sget v12, Lcom/android/settings/R$string;->lockpattern_settings_help_how_to_record:I

    sget-object v14, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object v9, v0

    move-object/from16 v13, v17

    invoke-direct/range {v9 .. v16}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 390
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v10, "ChoiceTooShort"

    const/4 v11, 0x2

    sget v12, Lcom/android/settings/R$string;->lockpattern_recording_incorrect_too_short:I

    const/16 v16, 0x1

    move-object v9, v0

    move-object/from16 v14, v18

    invoke-direct/range {v9 .. v16}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 394
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v10, "FirstChoiceValid"

    const/4 v11, 0x3

    sget v12, Lcom/android/settings/R$string;->lockpattern_pattern_entered_header:I

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 397
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v2, "NeedToConfirm"

    const/4 v3, 0x4

    sget v4, Lcom/android/settings/R$string;->lockpattern_need_to_confirm:I

    sget-object v13, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v10, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object v1, v0

    move-object v5, v13

    move-object v6, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 401
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v6, "ConfirmWrong"

    const/4 v7, 0x5

    sget v8, Lcom/android/settings/R$string;->lockpattern_need_to_unlock_wrong:I

    const/4 v11, -0x1

    const/4 v12, 0x1

    move-object v5, v0

    move-object v9, v13

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 405
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v6, "ChoiceConfirmed"

    const/4 v7, 0x6

    sget v8, Lcom/android/settings/R$string;->lockpattern_pattern_confirmed_header:I

    sget-object v10, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 408
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v10, "SameWithOwnerUser"

    const/4 v11, 0x7

    sget v12, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_owner:I

    const/16 v16, 0x1

    move-object v9, v0

    move-object/from16 v13, v17

    invoke-direct/range {v9 .. v16}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOwnerUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 413
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v10, "SameWithSecuritySpaceUser"

    const/16 v11, 0x8

    sget v12, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_security_space:I

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithSecuritySpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 418
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v10, "SameWithOtherSpaceUser"

    const/16 v11, 0x9

    sget v12, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_others:I

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOtherSpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 381
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .line 435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 436
    iput p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 437
    iput-object p4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 438
    iput-object p5, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 439
    iput p6, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 440
    iput-boolean p7, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .line 381
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .line 381
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
