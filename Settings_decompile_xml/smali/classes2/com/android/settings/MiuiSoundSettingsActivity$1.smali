.class Lcom/android/settings/MiuiSoundSettingsActivity$1;
.super Ljava/lang/Object;
.source "MiuiSoundSettingsActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSoundSettingsActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSoundSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettingsActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettingsActivity$1;->this$0:Lcom/android/settings/MiuiSoundSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsActivity$1;->this$0:Lcom/android/settings/MiuiSoundSettingsActivity;

    invoke-static {v0, p1}, Lcom/android/settings/MiuiSoundSettingsActivity;->-$$Nest$fputmCurrentPosition(Lcom/android/settings/MiuiSoundSettingsActivity;I)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettingsActivity$1;->this$0:Lcom/android/settings/MiuiSoundSettingsActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettingsActivity$1;->this$0:Lcom/android/settings/MiuiSoundSettingsActivity;

    invoke-static {v1}, Lcom/android/settings/MiuiSoundSettingsActivity;->-$$Nest$fgetmTitles(Lcom/android/settings/MiuiSoundSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/MiuiSoundSettingsActivity;->-$$Nest$fputmHapticFragment(Lcom/android/settings/MiuiSoundSettingsActivity;Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettingsActivity$1;->this$0:Lcom/android/settings/MiuiSoundSettingsActivity;

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettingsActivity;->-$$Nest$fgetmHapticFragment(Lcom/android/settings/MiuiSoundSettingsActivity;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettingsActivity$1;->this$0:Lcom/android/settings/MiuiSoundSettingsActivity;

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettingsActivity;->-$$Nest$fgetmHapticFragment(Lcom/android/settings/MiuiSoundSettingsActivity;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "onVisible"

    new-array v1, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettingsActivity$1;->this$0:Lcom/android/settings/MiuiSoundSettingsActivity;

    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettingsActivity;->-$$Nest$fgetmCurrentPosition(Lcom/android/settings/MiuiSoundSettingsActivity;)I

    move-result p0

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 100
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v4

    .line 99
    invoke-static {p1, v0, v1, v3}, Lcom/android/settings/MiuiSoundSettingsActivity;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
