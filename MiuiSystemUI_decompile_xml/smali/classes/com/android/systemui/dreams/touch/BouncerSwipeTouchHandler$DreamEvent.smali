.class public final enum Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

.field public static final enum DREAM_BOUNCER_FULLY_VISIBLE:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

.field public static final enum DREAM_SWIPED:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x3dc

    .line 5
    const-string v3, "DREAM_SWIPED"

    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_SWIPED:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 12
    new-instance v1, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 14
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x420

    .line 17
    const-string v4, "DREAM_BOUNCER_FULLY_VISIBLE"

    .line 19
    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;-><init>(Ljava/lang/String;II)V

    .line 21
    sput-object v1, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_BOUNCER_FULLY_VISIBLE:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 24
    filled-new-array {v0, v1}, [Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->$VALUES:[Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 30
    return-void
    .line 32
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->mId:I

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->$VALUES:[Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->mId:I

    .line 2
    return p0
    .line 4
.end method