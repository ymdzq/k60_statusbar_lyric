.class Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$1;
.super Ljava/lang/Object;
.source "PrivacyThumbnailAsyncTaskWithProgress.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$1;->this$0:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$1;->sCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mLabel:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    check-cast p2, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$1;->compare(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)I

    move-result p0

    return p0
.end method
