.class final enum Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;
.super Ljava/lang/Enum;
.source "NewFingerprintInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NewFingerprintInternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FingerprintSensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

.field public static final enum BACK:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

.field public static final enum BROADSIDE:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

.field public static final enum FRONT:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;
    .locals 3

    .line 941
    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->FRONT:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    sget-object v1, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->BACK:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    sget-object v2, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->BROADSIDE:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 942
    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->FRONT:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    const-string v1, "BACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->BACK:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    const-string v1, "BROADSIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->BROADSIDE:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    .line 941
    invoke-static {}, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->$values()[Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->$VALUES:[Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 941
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;
    .locals 1

    .line 941
    const-class v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;
    .locals 1

    .line 941
    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->$VALUES:[Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    invoke-virtual {v0}, [Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    return-object v0
.end method
