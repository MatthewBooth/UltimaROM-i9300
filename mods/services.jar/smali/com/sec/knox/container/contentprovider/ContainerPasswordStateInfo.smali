.class public Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
.super Ljava/lang/Object;
.source "ContainerPasswordStateInfo.java"


# instance fields
.field private mCharMaxOccurrencesCount:I

.field private mCharSeqLength:I

.field private mContainerId:I

.field private mDigitSeqLength:I

.field private mLength:I

.field private mLetters:I

.field private mLowercase:I

.field private mNonLetter:I

.field private mNumeric:I

.field private mQuality:I

.field private mSimplePassword:Z

.field private mSymbols:I

.field private mUppercase:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    iput-boolean v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharSeqLength:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mDigitSeqLength:I

    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharMaxOccurrencesCount:I

    return-void
.end method


# virtual methods
.method public getCharMaxOccurrencesCount()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharMaxOccurrencesCount:I

    return v0
.end method

.method public getCharSeqLength()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharSeqLength:I

    return v0
.end method

.method public getContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    return v0
.end method

.method public getDigitSeqLength()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mDigitSeqLength:I

    return v0
.end method

.method public getPasswordLength()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    return v0
.end method

.method public getPasswordLetters()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    return v0
.end method

.method public getPasswordLowercase()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    return v0
.end method

.method public getPasswordNonLetter()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    return v0
.end method

.method public getPasswordNumeric()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    return v0
.end method

.method public getPasswordQuality()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    return v0
.end method

.method public getPasswordSymbols()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    return v0
.end method

.method public getPasswordUppercase()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    return v0
.end method

.method public isPasswordSimple()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    return v0
.end method

.method public setCharMaxOccurrencesCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharMaxOccurrencesCount:I

    return-void
.end method

.method public setCharSeqLength(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharSeqLength:I

    return-void
.end method

.method public setContainerId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    return-void
.end method

.method public setDigitSeqLength(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mDigitSeqLength:I

    return-void
.end method

.method public setPasswordLength(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    return-void
.end method

.method public setPasswordLetters(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    return-void
.end method

.method public setPasswordLowercase(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    return-void
.end method

.method public setPasswordNonLetter(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    return-void
.end method

.method public setPasswordNumeric(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    return-void
.end method

.method public setPasswordQuality(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    return-void
.end method

.method public setPasswordSimple(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    return-void
.end method

.method public setPasswordSymbols(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    return-void
.end method

.method public setPasswordUppercase(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    return-void
.end method
