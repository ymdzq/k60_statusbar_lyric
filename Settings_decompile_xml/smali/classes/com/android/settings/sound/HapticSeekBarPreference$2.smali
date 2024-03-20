.class Lcom/android/settings/sound/HapticSeekBarPreference$2;
.super Ljava/lang/Object;
.source "HapticSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/HapticSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/HapticSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/HapticSeekBarPreference;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/sound/HapticSeekBarPreference$2;->this$0:Lcom/android/settings/sound/HapticSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/sound/HapticSeekBarPreference$2;->this$0:Lcom/android/settings/sound/HapticSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->performClick()V

    return-void
.end method
