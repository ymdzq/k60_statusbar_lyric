.class public final enum Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

.field public static final enum MAGNIFICATION_SETTINGS_PANEL_CLOSED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

.field public static final enum MAGNIFICATION_SETTINGS_PANEL_OPENED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

.field public static final enum MAGNIFICATION_SETTINGS_SIZE_EDITING_ACTIVATED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

.field public static final enum MAGNIFICATION_SETTINGS_WINDOW_SIZE_SELECTED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 2
    const/16 v1, 0x565

    .line 4
    const-string v2, "MAGNIFICATION_SETTINGS_PANEL_OPENED"

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_PANEL_OPENED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 12
    new-instance v1, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 14
    const/16 v2, 0x566

    .line 16
    const-string v3, "MAGNIFICATION_SETTINGS_PANEL_CLOSED"

    .line 18
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;-><init>(Ljava/lang/String;II)V

    .line 21
    sput-object v1, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_PANEL_CLOSED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 24
    new-instance v2, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 26
    const/16 v3, 0x567

    .line 28
    const-string v4, "MAGNIFICATION_SETTINGS_SIZE_EDITING_ACTIVATED"

    .line 30
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;-><init>(Ljava/lang/String;II)V

    .line 33
    sput-object v2, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_SIZE_EDITING_ACTIVATED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 36
    new-instance v3, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 38
    const/16 v4, 0x568

    .line 40
    const-string v5, "MAGNIFICATION_SETTINGS_SIZE_EDITING_DEACTIVATED"

    .line 42
    const/4 v6, 0x3

    .line 44
    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;-><init>(Ljava/lang/String;II)V

    .line 45
    new-instance v4, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 48
    const/16 v5, 0x56a

    .line 50
    const-string v6, "MAGNIFICATION_SETTINGS_WINDOW_SIZE_SELECTED"

    .line 52
    const/4 v7, 0x4

    .line 54
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;-><init>(Ljava/lang/String;II)V

    .line 55
    sput-object v4, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_WINDOW_SIZE_SELECTED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 58
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 60
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->$VALUES:[Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 64
    return-void
    .line 66
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->id:I

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->$VALUES:[Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->id:I

    .line 2
    return p0
    .line 4
.end method
