.class public Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;
.super Ljava/lang/Object;
.source "SplitConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    }
.end annotation


# instance fields
.field final forbiddenWorkProcesses:[Ljava/lang/String;

.field final installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

.field final loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

.field final obtainUserConfirmationDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;",
            ">;"
        }
    .end annotation
.end field

.field final splitLoadMode:I

.field final uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

.field final updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

.field final verifySignature:Z

.field final workProcesses:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetforbiddenWorkProcesses(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetworkProcesses(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "forbiddenWorkProcesses and workProcesses can\'t be set at the same time, you should choose one of them."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetsplitLoadMode(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->splitLoadMode:I

    .line 65
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetforbiddenWorkProcesses(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->forbiddenWorkProcesses:[Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetinstallReporter(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    .line 67
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetloadReporter(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    .line 68
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetupdateReporter(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    .line 69
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetuninstallReporter(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    .line 70
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetobtainUserConfirmationDialogClass(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    .line 71
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetworkProcesses(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->workProcesses:[Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->-$$Nest$fgetverifySignature(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->verifySignature:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;-><init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 2

    .line 57
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;-><init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder-IA;)V

    return-object v0
.end method
