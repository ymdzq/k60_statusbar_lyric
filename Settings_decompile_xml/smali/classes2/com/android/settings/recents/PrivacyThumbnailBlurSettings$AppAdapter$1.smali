.class Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$1;
.super Ljava/lang/Object;
.source "PrivacyThumbnailBlurSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$1;->this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 185
    sget v0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->TAG_APP_ITEM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    .line 186
    invoke-static {p1}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->-$$Nest$fgetmPrivacyThumbnailBlurEnable(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->-$$Nest$fputmPrivacyThumbnailBlurEnable(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;Z)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$1;->this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string/jumbo v3, "miui_recents_privacy_thumbnail_blur"

    .line 188
    invoke-static {v0, v3, v2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/android/settings/utils/Utils;->convertStringToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 196
    invoke-static {p1}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->-$$Nest$fgetmPrivacyThumbnailBlurEnable(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    .line 197
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 200
    :goto_0
    invoke-static {p1}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->-$$Nest$fgetmPrivacyThumbnailBlurEnable(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v4, :cond_1

    .line 201
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    if-eqz v1, :cond_2

    .line 205
    iget-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$1;->this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    iget-object p1, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 207
    invoke-static {v0}, Lcom/android/settings/utils/Utils;->convertSetToString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {p1, v3, v0}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    :cond_2
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$1;->this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mAdapter:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
