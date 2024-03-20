.class Lcom/android/settings/wifi/operatorutils/OperatorFactory$SingaporeOp;
.super Ljava/lang/Object;
.source "OperatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/operatorutils/OperatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingaporeOp"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory$SingaporeOp;->INSTANCE:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;

    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory$SingaporeOp;->INSTANCE:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;

    return-void
.end method
