.class final enum Lcom/android/settings/wifi/WpsFragment$State;
.super Ljava/lang/Enum;
.source "WpsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/wifi/WpsFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/wifi/WpsFragment$State;

.field public static final enum CONNECTED:Lcom/android/settings/wifi/WpsFragment$State;

.field public static final enum WPS_COMPLETE:Lcom/android/settings/wifi/WpsFragment$State;

.field public static final enum WPS_FAILED:Lcom/android/settings/wifi/WpsFragment$State;

.field public static final enum WPS_INIT:Lcom/android/settings/wifi/WpsFragment$State;

.field public static final enum WPS_START:Lcom/android/settings/wifi/WpsFragment$State;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/wifi/WpsFragment$State;
    .locals 5

    .line 62
    sget-object v0, Lcom/android/settings/wifi/WpsFragment$State;->WPS_INIT:Lcom/android/settings/wifi/WpsFragment$State;

    sget-object v1, Lcom/android/settings/wifi/WpsFragment$State;->WPS_START:Lcom/android/settings/wifi/WpsFragment$State;

    sget-object v2, Lcom/android/settings/wifi/WpsFragment$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsFragment$State;

    sget-object v3, Lcom/android/settings/wifi/WpsFragment$State;->CONNECTED:Lcom/android/settings/wifi/WpsFragment$State;

    sget-object v4, Lcom/android/settings/wifi/WpsFragment$State;->WPS_FAILED:Lcom/android/settings/wifi/WpsFragment$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/settings/wifi/WpsFragment$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/android/settings/wifi/WpsFragment$State;

    const-string v1, "WPS_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsFragment$State;->WPS_INIT:Lcom/android/settings/wifi/WpsFragment$State;

    .line 64
    new-instance v0, Lcom/android/settings/wifi/WpsFragment$State;

    const-string v1, "WPS_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsFragment$State;->WPS_START:Lcom/android/settings/wifi/WpsFragment$State;

    .line 65
    new-instance v0, Lcom/android/settings/wifi/WpsFragment$State;

    const-string v1, "WPS_COMPLETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsFragment$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsFragment$State;

    .line 66
    new-instance v0, Lcom/android/settings/wifi/WpsFragment$State;

    const-string v1, "CONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsFragment$State;->CONNECTED:Lcom/android/settings/wifi/WpsFragment$State;

    .line 67
    new-instance v0, Lcom/android/settings/wifi/WpsFragment$State;

    const-string v1, "WPS_FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsFragment$State;->WPS_FAILED:Lcom/android/settings/wifi/WpsFragment$State;

    .line 62
    invoke-static {}, Lcom/android/settings/wifi/WpsFragment$State;->$values()[Lcom/android/settings/wifi/WpsFragment$State;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WpsFragment$State;->$VALUES:[Lcom/android/settings/wifi/WpsFragment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/WpsFragment$State;
    .locals 1

    .line 62
    const-class v0, Lcom/android/settings/wifi/WpsFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WpsFragment$State;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/wifi/WpsFragment$State;
    .locals 1

    .line 62
    sget-object v0, Lcom/android/settings/wifi/WpsFragment$State;->$VALUES:[Lcom/android/settings/wifi/WpsFragment$State;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/WpsFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/WpsFragment$State;

    return-object v0
.end method
