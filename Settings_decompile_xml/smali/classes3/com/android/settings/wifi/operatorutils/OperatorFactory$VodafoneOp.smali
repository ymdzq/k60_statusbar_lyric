.class Lcom/android/settings/wifi/operatorutils/OperatorFactory$VodafoneOp;
.super Ljava/lang/Object;
.source "OperatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/operatorutils/OperatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VodafoneOp"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;

.field private static final REGION:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory$VodafoneOp;->INSTANCE:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetREGION()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory$VodafoneOp;->REGION:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.miui.customized.region"

    .line 55
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory$VodafoneOp;->REGION:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;

    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory$VodafoneOp;->INSTANCE:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;

    return-void
.end method
