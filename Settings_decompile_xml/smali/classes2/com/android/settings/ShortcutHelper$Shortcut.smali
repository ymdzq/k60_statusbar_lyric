.class public final enum Lcom/android/settings/ShortcutHelper$Shortcut;
.super Ljava/lang/Enum;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ShortcutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/ShortcutHelper$Shortcut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ShortcutHelper$Shortcut;

.field public static final enum ANTISPAM:Lcom/android/settings/ShortcutHelper$Shortcut;

.field public static final enum NETWORK_ASSISTANT:Lcom/android/settings/ShortcutHelper$Shortcut;

.field public static final enum OPTIMIZE_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

.field public static final enum PERM_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

.field public static final enum POWER_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

.field public static final enum VIRUS_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/ShortcutHelper$Shortcut;
    .locals 6

    .line 500
    sget-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->OPTIMIZE_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    sget-object v1, Lcom/android/settings/ShortcutHelper$Shortcut;->POWER_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    sget-object v2, Lcom/android/settings/ShortcutHelper$Shortcut;->VIRUS_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    sget-object v3, Lcom/android/settings/ShortcutHelper$Shortcut;->PERM_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    sget-object v4, Lcom/android/settings/ShortcutHelper$Shortcut;->NETWORK_ASSISTANT:Lcom/android/settings/ShortcutHelper$Shortcut;

    sget-object v5, Lcom/android/settings/ShortcutHelper$Shortcut;->ANTISPAM:Lcom/android/settings/ShortcutHelper$Shortcut;

    filled-new-array/range {v0 .. v5}, [Lcom/android/settings/ShortcutHelper$Shortcut;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 501
    new-instance v0, Lcom/android/settings/ShortcutHelper$Shortcut;

    const-string v1, "OPTIMIZE_CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->OPTIMIZE_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/settings/ShortcutHelper$Shortcut;

    const-string v1, "POWER_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->POWER_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/settings/ShortcutHelper$Shortcut;

    const-string v1, "VIRUS_CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->VIRUS_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/settings/ShortcutHelper$Shortcut;

    const-string v1, "PERM_CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->PERM_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/settings/ShortcutHelper$Shortcut;

    const-string v1, "NETWORK_ASSISTANT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->NETWORK_ASSISTANT:Lcom/android/settings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/settings/ShortcutHelper$Shortcut;

    const-string v1, "ANTISPAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->ANTISPAM:Lcom/android/settings/ShortcutHelper$Shortcut;

    .line 500
    invoke-static {}, Lcom/android/settings/ShortcutHelper$Shortcut;->$values()[Lcom/android/settings/ShortcutHelper$Shortcut;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->$VALUES:[Lcom/android/settings/ShortcutHelper$Shortcut;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 500
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ShortcutHelper$Shortcut;
    .locals 1

    .line 500
    const-class v0, Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ShortcutHelper$Shortcut;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/ShortcutHelper$Shortcut;
    .locals 1

    .line 500
    sget-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->$VALUES:[Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {v0}, [Lcom/android/settings/ShortcutHelper$Shortcut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ShortcutHelper$Shortcut;

    return-object v0
.end method
