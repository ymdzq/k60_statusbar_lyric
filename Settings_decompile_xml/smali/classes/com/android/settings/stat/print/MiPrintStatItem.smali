.class public Lcom/android/settings/stat/print/MiPrintStatItem;
.super Ljava/lang/Object;
.source "MiPrintStatItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stat/print/MiPrintStatItem$Builder;
    }
.end annotation


# instance fields
.field private mColorNum:I

.field private mConnectPrinterNum:I

.field private mCopiesNum:I

.field private mHelpPage:I

.field private mIsAlreadyStat:Z

.field private mNoConnectionToPrinter:I

.field private mOrientationNum:I

.field private mPaperSizeNum:I

.field private mPrintFailNum:I

.field private mPrintNum:I

.field private mPrintPageNum:I

.field private mPrinterBusy:I

.field private mPrinterCheck:I

.field private mPrinterDoorOpen:I

.field private mPrinterJammed:I

.field private mPrinterLowOnInk:I

.field private mPrinterLowOnToner:I

.field private mPrinterOffline:I

.field private mPrinterOutOfInk:I

.field private mPrinterOutOfPaper:I

.field private mPrinterOutOfToner:I

.field private mSearchPrintersNum:I

.field private mSelectPrintButtonNum:I

.field private mSupportPrinterPage:I


# direct methods
.method private constructor <init>(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mIsAlreadyStat:Z

    .line 33
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrintPageNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintPageNum:I

    .line 34
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmSelectPrintButtonNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSelectPrintButtonNum:I

    .line 35
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmSearchPrintersNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSearchPrintersNum:I

    .line 36
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmConnectPrinterNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mConnectPrinterNum:I

    .line 37
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmCopiesNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mCopiesNum:I

    .line 38
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmOrientationNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mOrientationNum:I

    .line 39
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmColorNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mColorNum:I

    .line 40
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPaperSizeNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPaperSizeNum:I

    .line 41
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrintNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintNum:I

    .line 42
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrintFailNum(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintFailNum:I

    .line 43
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmHelpPage(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mHelpPage:I

    .line 44
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmSupportPrinterPage(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSupportPrinterPage:I

    .line 45
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterDoorOpen(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterDoorOpen:I

    .line 46
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterJammed(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterJammed:I

    .line 47
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterOutOfPaper(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfPaper:I

    .line 48
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterCheck(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterCheck:I

    .line 49
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterOutOfInk(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfInk:I

    .line 50
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterOutOfToner(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfToner:I

    .line 51
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterLowOnInk(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterLowOnInk:I

    .line 52
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterLowOnToner(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterLowOnToner:I

    .line 53
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterBusy(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterBusy:I

    .line 54
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmPrinterOffline(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOffline:I

    .line 55
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmNoConnectionToPrinter(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mNoConnectionToPrinter:I

    .line 56
    invoke-static {p1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->-$$Nest$fgetmIsAlreadyStat(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mIsAlreadyStat:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;Lcom/android/settings/stat/print/MiPrintStatItem-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/stat/print/MiPrintStatItem;-><init>(Lcom/android/settings/stat/print/MiPrintStatItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getColorNum()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mColorNum:I

    return p0
.end method

.method public getConnectPrinterNum()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mConnectPrinterNum:I

    return p0
.end method

.method public getCopiesNum()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mCopiesNum:I

    return p0
.end method

.method public getHelpPage()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mHelpPage:I

    return p0
.end method

.method public getNoConnectionToPrinter()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mNoConnectionToPrinter:I

    return p0
.end method

.method public getOrientationNum()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mOrientationNum:I

    return p0
.end method

.method public getPaperSizeNum()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPaperSizeNum:I

    return p0
.end method

.method public getPrintFailNum()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintFailNum:I

    return p0
.end method

.method public getPrintNum()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintNum:I

    return p0
.end method

.method public getPrintPageNum()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintPageNum:I

    return p0
.end method

.method public getPrinterBusy()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterBusy:I

    return p0
.end method

.method public getPrinterCheck()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterCheck:I

    return p0
.end method

.method public getPrinterDoorOpen()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterDoorOpen:I

    return p0
.end method

.method public getPrinterJammed()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterJammed:I

    return p0
.end method

.method public getPrinterLowOnInk()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterLowOnInk:I

    return p0
.end method

.method public getPrinterLowOnToner()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterLowOnToner:I

    return p0
.end method

.method public getPrinterOffline()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOffline:I

    return p0
.end method

.method public getPrinterOutOfInk()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfInk:I

    return p0
.end method

.method public getPrinterOutOfPaper()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfPaper:I

    return p0
.end method

.method public getPrinterOutOfToner()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfToner:I

    return p0
.end method

.method public getSearchPrintersNum()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSearchPrintersNum:I

    return p0
.end method

.method public getSelectPrintButtonNum()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSelectPrintButtonNum:I

    return p0
.end method

.method public getSupportPrinterPage()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSupportPrinterPage:I

    return p0
.end method

.method public isAlreadyStat()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mIsAlreadyStat:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiPrintStatItem{mPrintPageNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintPageNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectPrintButtonNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSelectPrintButtonNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSearchPrintersNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSearchPrintersNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectPrinterNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mConnectPrinterNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCopiesNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mCopiesNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientationNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mOrientationNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mColorNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mColorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPaperSizeNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPaperSizeNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrintNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrintFailNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrintFailNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHelpPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mHelpPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportPrinterPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mSupportPrinterPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterDoorOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterDoorOpen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterJammed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterJammed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterOutOfPaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfPaper:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterCheck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterOutOfInk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfInk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterOutOfToner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOutOfToner:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterLowOnInk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterLowOnInk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterLowOnToner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterLowOnToner:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterBusy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterBusy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrinterOffline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mPrinterOffline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNoConnectionToPrinter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mNoConnectionToPrinter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAlreadyStat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/stat/print/MiPrintStatItem;->mIsAlreadyStat:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
