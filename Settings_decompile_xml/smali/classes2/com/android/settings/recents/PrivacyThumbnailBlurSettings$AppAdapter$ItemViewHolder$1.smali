.class Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "PrivacyThumbnailBlurSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder$1;->this$2:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder$1;->val$this$1:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    iput-object p3, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
