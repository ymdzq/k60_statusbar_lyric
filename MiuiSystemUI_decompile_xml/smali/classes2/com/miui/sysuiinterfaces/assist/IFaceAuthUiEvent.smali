.class public final enum Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

.field public static final enum FACE_AUTH_CHARGE_ANIMATION_CHANGED:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

.field public static final enum FACE_AUTH_FOLD_STATE_CHANGE:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

.field public static final enum FACE_AUTH_USER_CLICK_FACE_ICON:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x487

    .line 5
    const-string v3, "FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED"

    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 12
    new-instance v1, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 14
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x489

    .line 17
    const-string v4, "FACE_AUTH_UPDATED_STARTED_WAKING_UP"

    .line 19
    invoke-direct {v1, v4, v2, v3}, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;-><init>(Ljava/lang/String;II)V

    .line 21
    sput-object v1, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 24
    new-instance v2, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 26
    const/4 v3, 0x2

    .line 28
    const/16 v4, 0x4ad

    .line 29
    const-string v5, "FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN"

    .line 31
    invoke-direct {v2, v5, v3, v4}, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;-><init>(Ljava/lang/String;II)V

    .line 33
    sput-object v2, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 36
    new-instance v3, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 38
    const/4 v4, 0x3

    .line 40
    const/16 v5, 0x4e9

    .line 41
    const-string v6, "FACE_AUTH_CHARGE_ANIMATION_CHANGED"

    .line 43
    invoke-direct {v3, v6, v4, v5}, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;-><init>(Ljava/lang/String;II)V

    .line 45
    sput-object v3, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_CHARGE_ANIMATION_CHANGED:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 48
    new-instance v4, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 50
    const/4 v5, 0x4

    .line 52
    const/16 v6, 0x4eb

    .line 53
    const-string v7, "FACE_AUTH_FOLD_STATE_CHANGE"

    .line 55
    invoke-direct {v4, v7, v5, v6}, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;-><init>(Ljava/lang/String;II)V

    .line 57
    sput-object v4, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_FOLD_STATE_CHANGE:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 60
    new-instance v5, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 62
    const/4 v6, 0x5

    .line 64
    const/16 v7, 0x4ec

    .line 65
    const-string v8, "FACE_AUTH_USER_CLICK_FACE_ICON"

    .line 67
    invoke-direct {v5, v8, v6, v7}, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v5, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_USER_CLICK_FACE_ICON:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 72
    filled-new-array/range {v0 .. v5}, [Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 74
    move-result-object v0

    .line 77
    sput-object v0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->$VALUES:[Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 78
    return-void
    .line 80
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->mId:I

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->$VALUES:[Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->mId:I

    .line 2
    return p0
    .line 4
.end method
