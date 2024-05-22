.class public final Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final list:[I

.field public final weakReferenceContext:Ljava/lang/ref/WeakReference;

.field public final weakReferenceView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/clock/classic/ClassicClockView;Ljava/util/HashSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;->weakReferenceView:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;->weakReferenceContext:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    .line 19
    move-result p1

    .line 22
    new-array p1, p1, [I

    .line 23
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;->list:[I

    .line 25
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 30
    const/4 p2, 0x0

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object p3

    .line 41
    check-cast p3, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result p3

    .line 47
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;->list:[I

    .line 48
    aput p3, v0, p2

    .line 50
    add-int/lit8 p2, p2, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    return-void
    .line 55
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;->list:[I

    .line 4
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    aget v3, p1, v2

    .line 11
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;->weakReferenceContext:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-static {v4, v3, v1}, Lcom/miui/clock/utils/DataUtils;->getHealthBean(Ljava/lang/ref/WeakReference;ILcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;

    .line 15
    move-result-object v1

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    return-object v1
    .line 22
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/miui/clock/module/HealthBean;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;->weakReferenceView:Ljava/lang/ref/WeakReference;

    .line 7
    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/miui/clock/classic/ClassicClockView;

    .line 15
    if-eqz p0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/miui/clock/module/HealthBean;->updateData(Lcom/miui/clock/module/HealthBean;Ljava/util/HashSet;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 29
    :goto_0
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 31
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 33
    invoke-static {p1}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 35
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 41
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 43
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->updateHealth(Lcom/miui/clock/module/HealthBean;)V

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 48
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 50
    invoke-static {p1}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 58
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 60
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateHealth(Lcom/miui/clock/module/HealthBean;)V

    .line 62
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 65
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 67
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 69
    move-result v0

    .line 72
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 76
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 78
    invoke-static {p1}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 80
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 86
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 88
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateHealth(Lcom/miui/clock/module/HealthBean;)V

    .line 90
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 93
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 95
    invoke-virtual {p0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 97
    move-result p0

    .line 100
    invoke-virtual {p1, p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 101
    :cond_3
    return-void
    .line 104
.end method
