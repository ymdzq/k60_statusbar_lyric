.class Lcom/android/settings/widget/ImagePreference$2;
.super Ljava/lang/Object;
.source "ImagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/ImagePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ImagePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ImagePreference;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/widget/ImagePreference$2;->this$0:Lcom/android/settings/widget/ImagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/android/settings/widget/ImagePreference$2;->this$0:Lcom/android/settings/widget/ImagePreference;

    invoke-static {p1}, Lcom/android/settings/widget/ImagePreference;->-$$Nest$fgetmContentClickListener(Lcom/android/settings/widget/ImagePreference;)Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/ImagePreference$2;->this$0:Lcom/android/settings/widget/ImagePreference;

    invoke-interface {p1, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    return-void
.end method
