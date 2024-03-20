.class final enum Lcom/android/settings/OldmanModeSettings$JeejenStatus;
.super Ljava/lang/Enum;
.source "OldmanModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OldmanModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JeejenStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/OldmanModeSettings$JeejenStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/OldmanModeSettings$JeejenStatus;

.field public static final enum INSTALLED_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

.field public static final enum INSTALLED_NOT_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

.field public static final enum UNINSTALLED:Lcom/android/settings/OldmanModeSettings$JeejenStatus;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/OldmanModeSettings$JeejenStatus;
    .locals 3

    .line 204
    sget-object v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->UNINSTALLED:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    sget-object v1, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->INSTALLED_NOT_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    sget-object v2, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->INSTALLED_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 205
    new-instance v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    const-string v1, "UNINSTALLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/OldmanModeSettings$JeejenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->UNINSTALLED:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    .line 206
    new-instance v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    const-string v1, "INSTALLED_NOT_CURRENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/OldmanModeSettings$JeejenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->INSTALLED_NOT_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    .line 207
    new-instance v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    const-string v1, "INSTALLED_CURRENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/OldmanModeSettings$JeejenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->INSTALLED_CURRENT:Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    .line 204
    invoke-static {}, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->$values()[Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    move-result-object v0

    sput-object v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->$VALUES:[Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/OldmanModeSettings$JeejenStatus;
    .locals 1

    .line 204
    const-class v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/OldmanModeSettings$JeejenStatus;
    .locals 1

    .line 204
    sget-object v0, Lcom/android/settings/OldmanModeSettings$JeejenStatus;->$VALUES:[Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    invoke-virtual {v0}, [Lcom/android/settings/OldmanModeSettings$JeejenStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/OldmanModeSettings$JeejenStatus;

    return-object v0
.end method
