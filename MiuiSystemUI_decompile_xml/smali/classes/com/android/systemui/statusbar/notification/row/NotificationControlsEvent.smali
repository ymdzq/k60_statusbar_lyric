.class final enum Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

.field public static final enum NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

.field public static final enum NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

.field public static final enum NOTIFICATION_CONTROLS_SAVE_IMPORTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x252

    .line 5
    const-string v3, "NOTIFICATION_CONTROLS_OPEN"

    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 12
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 14
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x253

    .line 17
    const-string v4, "NOTIFICATION_CONTROLS_SAVE_IMPORTANCE"

    .line 19
    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;-><init>(Ljava/lang/String;II)V

    .line 21
    sput-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_SAVE_IMPORTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 24
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 26
    const/4 v3, 0x2

    .line 28
    const/16 v4, 0x254

    .line 29
    const-string v5, "NOTIFICATION_CONTROLS_CLOSE"

    .line 31
    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;-><init>(Ljava/lang/String;II)V

    .line 33
    sput-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 36
    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 38
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 42
    return-void
    .line 44
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->mId:I

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->mId:I

    .line 2
    return p0
    .line 4
.end method
