.class public Lcom/google/android/play/core/splitinstall/SplitInstallException;
.super Ljava/lang/RuntimeException;
.source "SplitInstallException.java"


# instance fields
.field private final errorCode:I

.field private final moduleNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Split Install Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallException;->errorCode:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallException;->moduleNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;)V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Split Install Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    iput p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallException;->errorCode:I

    .line 24
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallException;->moduleNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallException;->errorCode:I

    return p0
.end method

.method public getModuleNames()[Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallException;->moduleNames:[Ljava/lang/String;

    return-object p0
.end method
