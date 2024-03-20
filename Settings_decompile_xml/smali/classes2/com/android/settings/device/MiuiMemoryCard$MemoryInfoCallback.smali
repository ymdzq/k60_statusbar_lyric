.class Lcom/android/settings/device/MiuiMemoryCard$MemoryInfoCallback;
.super Ljava/lang/Object;
.source "MiuiMemoryCard.java"

# interfaces
.implements Lcom/android/settings/device/MemoryInfoHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiMemoryCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryInfoCallback"
.end annotation


# instance fields
.field private mOuterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/device/MiuiMemoryCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MiuiMemoryCard;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMemoryCard$MemoryInfoCallback;->mOuterRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleTaskResult(J)V
    .locals 5

    .line 97
    iget-object p0, p0, Lcom/android/settings/device/MiuiMemoryCard$MemoryInfoCallback;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/device/MiuiMemoryCard;

    if-nez p0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getTotalMemoryBytes()J

    move-result-wide v2

    .line 107
    invoke-virtual {v1, v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getEUASupportSize(Landroid/content/Context;)I

    move-result v1

    const-string v4, "%.0f"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/settings/MiuiUtils;->formatUFSShortSize(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sub-long/2addr v2, p1

    const-string p1, "%.1f"

    .line 110
    invoke-static {v0, v2, v3, p1}, Lcom/android/settings/MiuiUtils;->formatSize(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 113
    invoke-static {p0}, Lcom/android/settings/device/MiuiMemoryCard;->-$$Nest$fgettotalText(Lcom/android/settings/device/MiuiMemoryCard;)Landroid/widget/TextView;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " /"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
