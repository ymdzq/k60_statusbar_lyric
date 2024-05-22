.class public final enum Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

.field public static final enum LOCK_SCREEN_LONG_PRESS_POPUP_CLICKED:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;


# instance fields
.field private final _id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 2
    const/16 v1, 0x50c

    .line 4
    const-string v2, "LOCK_SCREEN_LONG_PRESS_POPUP_SHOWN"

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 12
    const/16 v2, 0x50d

    .line 14
    const-string v3, "LOCK_SCREEN_LONG_PRESS_POPUP_CLICKED"

    .line 16
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;->LOCK_SCREEN_LONG_PRESS_POPUP_CLICKED:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 22
    filled-new-array {v0, v1}, [Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 24
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;->$VALUES:[Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 28
    return-void
    .line 30
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;->_id:I

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;->$VALUES:[Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;->_id:I

    .line 2
    return p0
    .line 4
.end method
