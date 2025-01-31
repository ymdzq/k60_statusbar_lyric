.class public Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
.super Ljava/lang/Object;
.source "SplitConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private forbiddenWorkProcesses:[Ljava/lang/String;

.field private installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

.field private loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

.field private obtainUserConfirmationDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;",
            ">;"
        }
    .end annotation
.end field

.field private splitLoadMode:I

.field private uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

.field private updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

.field private verifySignature:Z

.field private workProcesses:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetforbiddenWorkProcesses(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->forbiddenWorkProcesses:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinstallReporter(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadReporter(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetobtainUserConfirmationDialogClass(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Ljava/lang/Class;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsplitLoadMode(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->splitLoadMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuninstallReporter(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateReporter(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetverifySignature(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->verifySignature:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetworkProcesses(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->workProcesses:[Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->splitLoadMode:I

    .line 93
    iput-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->verifySignature:Z

    .line 96
    const-class v0, Lcom/iqiyi/android/qigsaw/core/DefaultObtainUserConfirmationDialog;

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;
    .locals 2

    .line 187
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;-><init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration-IA;)V

    return-object v0
.end method

.method public forbiddenWorkProcesses([Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 1

    .line 131
    array-length v0, p1

    if-lez v0, :cond_0

    .line 132
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->forbiddenWorkProcesses:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public installReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    return-object p0
.end method

.method public loadReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    return-object p0
.end method

.method public logger(Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 103
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->setSplitLogImp(Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;)V

    return-object p0
.end method

.method public obtainUserConfirmationDialogClass(Ljava/lang/Class;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;",
            ">;)",
            "Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    return-object p0
.end method

.method public splitLoadMode(I)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 111
    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->splitLoadMode:I

    return-object p0
.end method

.method public uninstallReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    return-object p0
.end method

.method public updateReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    return-object p0
.end method

.method public verifySignature(Z)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->verifySignature:Z

    return-object p0
.end method

.method public workProcesses([Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 1

    .line 120
    array-length v0, p1

    if-lez v0, :cond_0

    .line 121
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->workProcesses:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method
