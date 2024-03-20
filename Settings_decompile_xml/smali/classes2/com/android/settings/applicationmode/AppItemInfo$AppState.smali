.class public final enum Lcom/android/settings/applicationmode/AppItemInfo$AppState;
.super Ljava/lang/Enum;
.source "AppItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applicationmode/AppItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/applicationmode/AppItemInfo$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/applicationmode/AppItemInfo$AppState;

.field public static final enum EMBEDDED:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

.field public static final enum SIZE_COMPAT_FOUR:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

.field public static final enum SIZE_COMPAT_FULL:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

.field public static final enum SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/applicationmode/AppItemInfo$AppState;
    .locals 4

    .line 11
    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->EMBEDDED:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    sget-object v1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FULL:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    sget-object v2, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FOUR:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    sget-object v3, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applicationmode/AppItemInfo$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->EMBEDDED:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    .line 13
    new-instance v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    const-string v1, "SIZE_COMPAT_FULL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applicationmode/AppItemInfo$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FULL:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    .line 14
    new-instance v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    const-string v1, "SIZE_COMPAT_FOUR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applicationmode/AppItemInfo$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FOUR:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    .line 15
    new-instance v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    const-string v1, "SIZE_COMPAT_NINE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applicationmode/AppItemInfo$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    .line 11
    invoke-static {}, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->$values()[Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->$VALUES:[Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/applicationmode/AppItemInfo$AppState;
    .locals 1

    .line 11
    const-class v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/applicationmode/AppItemInfo$AppState;
    .locals 1

    .line 11
    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->$VALUES:[Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    invoke-virtual {v0}, [Lcom/android/settings/applicationmode/AppItemInfo$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    return-object v0
.end method
